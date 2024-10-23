package lcvck.back.end.service;

import lcvck.back.end.entity.Course;
import lcvck.back.end.exceptions.AppException;
import lcvck.back.end.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Optional;

@Service
public class CourseService {

    @Autowired
    private CourseRepository courseRepository;

    // Méthode pour récupérer toutes les courses et leurs classements depuis la base de données
    public List<Course> getCoursesWithClassements() {
        return courseRepository.findAll();  // Récupère toutes les courses depuis la base
    }

    public Optional<Course> getCourseById(Long id) {
        return courseRepository.findById(id);
    }

    public void delete(Long id) {
        courseRepository.deleteById(id); // Assurez-vous que votre repository étend JpaRepository
    }


    public Course addCourse(Course newCourse) {
        return courseRepository.save(newCourse);
    }

//    public Course updateCourse(Long id, Course courseDetails) {
        // Recherche la course existante par son ID
//        Course existingCourse = courseRepository.findById(id)
 //               .orElseThrow(() -> new AppException("Course not found with id: " + id, HttpStatus.BAD_REQUEST));

        // Met à jour les champs de la course
 //       existingCourse.setDate(courseDetails.getDate());
  //      existingCourse.setCourse(courseDetails.getCourse());

        // Gère la mise à jour des classements si nécessaire
 //       existingCourse.setClassements(courseDetails.getClassements());

        // Sauvegarde la course mise à jour
 //       return courseRepository.save(existingCourse);
//    }
}
