package user.action;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter

public class ActionForward {
   private String path;
   private boolean redirect;//t(sendRedirect), f(forward)
   
   
}