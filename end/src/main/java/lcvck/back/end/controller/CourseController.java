package lcvck.back.end.controller;

import lcvck.back.end.entity.Classement;
import lcvck.back.end.entity.Course;
import lcvck.back.end.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/v1/resultats")
public class CourseController {
    @Autowired private CourseService courseService;

    @GetMapping("/get")
    public List<Course> getAllResultat() { return courseService.getCoursesWithClassements(); };

    @PostMapping("/create")
    public ResponseEntity<Course> createCourse(@RequestBody Course course) {
        Course savedCourse = courseService.addCourse(course);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedCourse);
    }
}
