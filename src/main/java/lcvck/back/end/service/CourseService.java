package lcvck.back.end.service;

import lcvck.back.end.entity.Course;
import lcvck.back.end.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class CourseService {

    @Autowired
    private CourseRepository courseRepository;

    // Méthode pour récupérer toutes les courses et leurs classements depuis la base de données
    public List<Course> getCoursesWithClassements() {
        return courseRepository.findAll();  // Récupère toutes les courses depuis la base
    }

    public Course addCourse(Course newCourse) {
        return courseRepository.save(newCourse);
    }
}
