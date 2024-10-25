package lcvck.back.end.controller;

import jakarta.persistence.EntityNotFoundException;
import lcvck.back.end.service.ClubService;
import lcvck.back.end.entity.Club;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
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


    @PostMapping("/upload")
    public ResponseEntity<String> uploadImage(@RequestParam("image") MultipartFile file) {
        try {
            Club club = new Club();
            club.setImage(file.getBytes());  // Convertir le fichier en byte[] et le stocker dans l'objet Club
            // Sauvegarder le club dans la base de données via un service ou un repository
            clubService.save(club); // clubService gère la sauvegarde en base
            return ResponseEntity.ok("Image uploaded successfully.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to upload image.");
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
}

