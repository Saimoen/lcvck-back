package lcvck.back.end.service;

import lcvck.back.end.dto.CredentialsDto;
import lcvck.back.end.dto.UserDto;
import lcvck.back.end.entity.User;
import lcvck.back.end.exceptions.AppException;
import lcvck.back.end.mappers.UserMapper;
import lcvck.back.end.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.nio.CharBuffer;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserMapper userMapper;

    public UserDto login(CredentialsDto credentialsDto) {
        User user = userRepository.findByLogin(credentialsDto.login())
                .orElseThrow(() -> new AppException("User not found", HttpStatus.NOT_FOUND));

        if (passwordEncoder.matches(CharBuffer.wrap(credentialsDto.password()), user.getPassword())) {
            return userMapper.toUserDto(user);
        }
        throw new AppException("Invalid password", HttpStatus.BAD_REQUEST);
    }

}
