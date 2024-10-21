package lcvck.back.end.mappers;

import lcvck.back.end.dto.UserDto;
import lcvck.back.end.entity.User;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface UserMapper {

    UserDto toUserDto(User user);
}
