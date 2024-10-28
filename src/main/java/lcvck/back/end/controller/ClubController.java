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

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.http.MediaType;

@RestController
@RequestMapping("/api/v1/clubs")
@CrossOrigin(origins = "https://lcvck-front-92c29473ebbf.herokuapp.com")
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
    public ResponseEntity<Club> updateClub(
            @PathVariable Long id,
            @RequestParam(value = "image", required = false) MultipartFile file, // Pour le fichier image
            @ModelAttribute ClubDTO clubDTO) throws IOException { // Utilisez un DTO pour les autres données
        Optional<Club> existingClubOpt = clubService.findById(id);

        if (!existingClubOpt.isPresent()) {
            return ResponseEntity.notFound().build(); // Renvoie 404 si le club n'existe pas
        }

        Club updatedClub = existingClubOpt.get();

        // Mettez à jour les champs du club
        updatedClub.setMail(clubDTO.getMail());
        updatedClub.setTelephone(clubDTO.getTelephone());
        updatedClub.setTitre(clubDTO.getTitre());
        updatedClub.setAdresse(clubDTO.getAdresse());
        updatedClub.setLatitude(clubDTO.getLatitude());
        updatedClub.setLongitude(clubDTO.getLongitude());
        updatedClub.setLien(clubDTO.getLien());
        updatedClub.setProvince(clubDTO.getProvince());
        updatedClub.setType(clubDTO.getType());

        // Si un fichier est envoyé, mettez à jour l'image
        if (file != null && !file.isEmpty()) {
            updatedClub.setImage(file.getBytes());
        }

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

