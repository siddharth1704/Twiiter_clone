package tech.codingclub.helix.entity;


public class Member extends MemberBase {

    public boolean is_followed;

    public boolean isIs_followed() {
        return is_followed;
    }

    public String getEmail() {
        return email;
    }

    public String getRole() {
        return role;
    }

    public String getPassword() {
        return password;
    }

    public String getImage() {
        return image;
    }

    public String getToken() {
        return token;
    }
    public Long getId(){
        return id;
    }
    public String name;

    public String getName() {
        return name;
    }

    public Boolean getIs_verified() {
        return is_verified;
    }

    public String email;
    public String role;
    public String password;
    public String image;
    public String token;
    public Boolean is_verified;

}
