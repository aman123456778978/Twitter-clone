package tech.codingclub.helix.entity;

public class LoginResponse {
    public Long id;
    public boolean is_Logined;
    public String message;
    public LoginResponse() {

    }
    public LoginResponse(Long id, boolean is_Logined, String message) {
        this.id = id;
        this.is_Logined = is_Logined;
        this.message = message;
    }





}
