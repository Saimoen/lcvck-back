package lcvck.back.end.service;

import lcvck.back.end.entity.Classement;
import lcvck.back.end.entity.Course;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class CourseService {
    public List<Course> getCoursesWithClassements() {
        // Simulez des données pour les courses et leurs classements
        List<Classement> classementScratchCourse1 = new ArrayList<>(Arrays.asList(
                new Classement(1, "8B", 8, "MD SHELL", "M50 H", Arrays.asList("PAROTU Laurent", "CLOBER Moïse"), "01:16:31", ""),
                new Classement(2, "19B", 9, "MD SHELL", "M50 H", Arrays.asList("PARANQUE Régis", "LE POUL Philippe"), "01:20:10", "00:03:39"),
                new Classement(3, "18C", 2, "TUHAA PAE VA'A", "OPEN F", Arrays.asList("TAVITA Titaina", "TERII Rosemelle"), "01:21:56", "00:05:25")
                // Ajoutez les autres classements ici
        ));

        List<Classement> classementJunior16 = new ArrayList<>(Arrays.asList(
                new Classement(1, "12C", 6, "PC DUMBEA", "J16 G", Arrays.asList("TOMA Franck", "NATUA Nohoarii"), "01:33:13", "")
        ));

        // Créez les objets Course et ajoutez les classements
        Course course1 = new Course("Scratch Course 1 (14 km)", classementScratchCourse1);
        Course course2 = new Course("Junior 16 (14 km)", classementJunior16);

        // Retournez la liste des courses
        return Arrays.asList(course1, course2);
    }
}
