package lcvck.back.end.controller;

import jakarta.persistence.EntityNotFoundException;
import lcvck.back.end.dto.ClubDTO;
import lcvck.back.end.service.ClubService;
import lcvck.back.end.entity.Club;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Optional;

import org.springframework.http.MediaType;

@RestController
@RequestMapping("/api/v1/clubs")
// @CrossOrigin(origins = "https://lcvck-front-92c29473ebbf.herokuapp.com")
@CrossOrigin(origins = "http://localhost:8080/")
public class ClubController {

    @Autowired
    private ClubService clubService;

    @GetMapping
    public List<Club> getAllClubs() {
        return clubService.getAllClubs();
    }

    @GetMapping("/get/{id}")
    public Optional<Club> getClubById(@PathVariable Long id) {
        return clubService.findById(id);
    }

    @PostMapping("/upload")
    public ResponseEntity<String> uploadImage(
            @RequestParam("image") MultipartFile file,
            @ModelAttribute ClubDTO clubDTO) {
        try {
            Club club = new Club();
            club.setImage(file.getBytes());
            club.setMail(clubDTO.getMail());
            club.setTelephone(clubDTO.getTelephone());
            club.setTitre(clubDTO.getTitre());
            club.setAdresse(clubDTO.getAdresse());
            club.setLatitude(clubDTO.getLatitude());
            club.setLongitude(clubDTO.getLongitude());
            club.setLien(clubDTO.getLien());
            club.setProvince(clubDTO.getProvince());
            club.setType(clubDTO.getType());
            clubService.save(club);
            return ResponseEntity.ok("Club created and image uploaded successfully.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to create club.");
        }
    }

    @GetMapping("/image/{id}")
    public ResponseEntity<byte[]> getImage(@PathVariable Long id) {
        Club club = clubService.findById(id).orElseThrow(() -> new EntityNotFoundException("Club non trouvé pour l'ID : " + id));
        if (club != null && club.getImage() != null) {
            return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(club.getImage());
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }

    @PutMapping("/update/{id}")
    public ResponseEntity<Club> updateCourse(@PathVariable Long id, @RequestBody Club club) {
        // Logic pour trouver la course existante par son ID et mettre à jour ses informations
        Optional<Club> existingClub = clubService.findById(id);

        if (!existingClub.isPresent()) {
            return ResponseEntity.notFound().build(); // Renvoie 404 si la course n'existe pas
        }

        Club updatedClub = existingClub.get();
        updatedClub.setMail(club.getMail());
        updatedClub.setTelephone(club.getTelephone());
        updatedClub.setTitre(club.getTitre());
        updatedClub.setAdresse(club.getAdresse());
        updatedClub.setLatitude(club.getLatitude());
        updatedClub.setLongitude(club.getLongitude());
        updatedClub.setLien(club.getLien());
        updatedClub.setProvince(club.getProvince());
        updatedClub.setType(club.getType());
        updatedClub.setImage(updatedClub.getImage());

        clubService.save(updatedClub);
        return ResponseEntity.ok(updatedClub);
    }

    // Suppress club
    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> deleteClub(@PathVariable Long id) {
        Optional<Club> clubToDelete = clubService.findById(id); // Assurez-vous d'avoir une méthode dans votre service pour trouver par ID
        if (clubToDelete.isPresent()) {
            clubService.delete(id); // Méthode pour supprimer la course
            return ResponseEntity.ok("Course deleted successfully.");
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Course not found with ID: " + id);
        }

    }
}

