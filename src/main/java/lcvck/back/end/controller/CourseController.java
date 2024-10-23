package lcvck.back.end.controller;

import lcvck.back.end.entity.Classement;
import lcvck.back.end.entity.Course;
import lcvck.back.end.repository.CourseRepository;
import lcvck.back.end.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/resultats")
@CrossOrigin(origins = "https://lcvck-front-92c29473ebbf.herokuapp.com")
public class CourseController {
    @Autowired private CourseService courseService;
    @Autowired
    private CourseRepository courseRepository;

    @GetMapping("/get")
    public List<Course> getAllResultat() { return courseService.getCoursesWithClassements(); };

    @GetMapping("/get/{id}")
    public Optional<Course> getCourseById(@PathVariable Long id) {
        return courseService.getCourseById(id);
    }

    @PostMapping("/create")
    public ResponseEntity<Course> createCourse(@RequestBody Course course) {
        Course savedCourse = courseService.addCourse(course);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedCourse);
    }

    @PutMapping("/update/{id}")
    public ResponseEntity<Course> updateCourse(@PathVariable Long id, @RequestBody Course course) {
        // Logic pour trouver la course existante par son ID et mettre à jour ses informations
        Optional<Course> existingCourse = courseService.getCourseById(id);

        if (!existingCourse.isPresent()) {
            return ResponseEntity.notFound().build(); // Renvoie 404 si la course n'existe pas
        }

        Course updatedCourse = existingCourse.get();
        updatedCourse.setDate(course.getDate());
        updatedCourse.setCourse(course.getCourse());
        updatedCourse.setClassements(course.getClassements());

        courseRepository.save(updatedCourse);
        return ResponseEntity.ok(updatedCourse);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> deleteCourse(@PathVariable Long id) {
        Optional<Course> courseToDelete = courseService.getCourseById(id); // Assurez-vous d'avoir une méthode dans votre service pour trouver par ID
        if (courseToDelete.isPresent()) {
            courseService.delete(id); // Méthode pour supprimer la course
            return ResponseEntity.ok("Course deleted successfully.");
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Course not found with ID: " + id);
        }
    }

}
