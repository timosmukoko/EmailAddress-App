package business;


public class User {

    private String name;
    private String address;
    private String city;
     private String country;
    private String phone;
    private String email;
    private String gender;
    private String comment;
    private String hearAboutUs;
    

    public User() {
    }

          

    public User(String name, String address, String city, String country,String phone, String email, 
            String gender, String comment, String hearAboutUs ) {
        this.name = name;
        this.address = address;
        this.city = city;
        this.country = country;
        this.phone=phone;
        this.email=email;
        this.gender = gender;
        this.comment=comment;
        this.hearAboutUs=hearAboutUs;
    }

    /**
     * @return the firstName
     */
    public String getName() {
        return name;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setName(String Name) {
        this.name=Name;
    }

    /**
     * @return the lastName
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the emailAddress
     */
    public String getCity() {
        return city;
    }

    /**
     * @param emailAddress the emailAddress to set
     */
    public void setCity (String city) {
        this.city = city;
    }

    /**
     * @return the age
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param age the age to set
     */
    public void setCountry(String country) {
        this.country= country;
    }
    
     public String getPhone() {
        return phone;
    }
    
     public String getEmail() {
        return email;
    }
      public void setEmail(String email) {
        this.email= email;
    }
     public String getGender(){
        return gender;
    }
     public void setGender(String gender) {
        this.gender = gender;
    }
      public String getComment() {
        return comment;
    }
       public void setComment(String comment) {
        this.comment= comment;
    }
       public String getHearAboutUs() {
        return hearAboutUs;
    }
       public void setHearAboutUs(String hearAboutUs) {
        this.hearAboutUs = hearAboutUs;
    }
    
}
