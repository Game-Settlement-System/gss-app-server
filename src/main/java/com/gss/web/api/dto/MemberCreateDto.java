package com.gss.web.api.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import com.gss.web.api.validator.UserSingupValidationGroup;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
//public class MemberCreateDto {
//	@NotBlank(message="{Blank.userid}",groups=UserSingupValidationGroup.NotEmptyGroup.class)
//	@Pattern(regexp = "^[a-zA-Z0-9]{2,9}$", message="{Pattern.userid}",groups=UserSingupValidationGroup.PatternCheckGroup.class)
//	private String userid;
//	@NotBlank(message = "{Blank.email}",groups=UserSingupValidationGroup.NotEmptyGroup.class)
//	@Pattern(regexp = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,6}$", message="{Pattern.email}",groups=UserSingupValidationGroup.PatternCheckGroup.class)
//	private String email;
//	@NotBlank(message = "{Blank.password}",groups=UserSingupValidationGroup.NotEmptyGroup.class)
//	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\\d~!@#$%^&*()+|=]{8,16}$\n", message = "{Pattern.password}",groups=UserSingupValidationGroup.PatternCheckGroup.class)
//	private String password;
//	@NotBlank(groups=UserSingupValidationGroup.NotEmptyGroup.class)
//	private String confirmPassword;
//	@NotBlank(groups=UserSingupValidationGroup.NotEmptyGroup.class)
//	private String phoneNumber;
//}

public class MemberCreateDto {
	@Pattern(regexp = "^[a-zA-Z0-9]{2,9}$", message="{Pattern.userid}")
	private String userid;
	@Pattern(regexp = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,6}$", message="{Pattern.email}")
	private String email;
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\\d~!@#$%^&*()+|=]{8,16}$", message = "{Pattern.password}")
	private String password;
	@NotBlank
	private String confirmPassword;
	@Pattern(regexp="^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$",message="{Pattern.phone}")
	private String phoneNumber;
}

