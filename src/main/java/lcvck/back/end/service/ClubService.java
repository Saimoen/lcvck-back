package lcvck.back.end.service;
import lcvck.back.end.entity.Club;
import lcvck.back.end.repository.ClubRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ClubService {
    @Autowired
    private ClubRepository clubRepository;

    public List<Club> getAllClubs() {
        return clubRepository.findAll();
    }

    public Club save(Club club) {
        return clubRepository.save(club);
    }

    public Optional<Club> findById(Long id) {
        return clubRepository.findById(id);
    }
    public void delete(Long id) {
        clubRepository.deleteById(id);
    }
}
