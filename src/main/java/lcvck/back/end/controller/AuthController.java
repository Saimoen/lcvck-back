package lcvck.back.end.controller;

import lcvck.back.end.config.UserAuthProvider;
import lcvck.back.end.dto.CredentialsDto;
import lcvck.back.end.dto.UserDto;
import lcvck.back.end.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class AuthController {
    private final UserService userService;
    private final UserAuthProvider userAuthProvider;

    @PostMapping("/login")
    public ResponseEntity<UserDto> login (@RequestBody CredentialsDto credentialsDto) {
      UserDto user = userService.login(credentialsDto);
      user.setToken(userAuthProvider.createToken(user));
       return ResponseEntity.ok(user);
    }
}
