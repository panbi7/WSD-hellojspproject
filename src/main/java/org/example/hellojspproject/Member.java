package org.example.hellojspproject;

import java.util.Objects;

public class Member {
    private int id;
    private String name;
    private String birthdate;
    private String email;
    private int admissionYear;
    private String instrument;

    // 생성자
    public Member(int id, String name, String birthdate, String email, int admissionYear, String instrument) {
        this.id = id;
        this.name = name;
        this.birthdate = birthdate;
        this.email = email;
        this.admissionYear = admissionYear;
        this.instrument = instrument;
    }

    // 기본 생성자
    public Member() {
    }

    // Getter와 Setter 메서드
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAdmissionYear() {
        return admissionYear;
    }

    public void setAdmissionYear(int admissionYear) {
        this.admissionYear = admissionYear;
    }

    public String getInstrument() {
        return instrument;
    }

    public void setInstrument(String instrument) {
        this.instrument = instrument;
    }

    // toString() 메서드 오버라이딩
    @Override
    public String toString() {
        return "Member{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", birthdate='" + birthdate + '\'' +
                ", email='" + email + '\'' +
                ", admissionYear=" + admissionYear +
                ", instrument='" + instrument + '\'' +
                '}';
    }

    // equals()와 hashCode() 메서드 오버라이딩
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Member member = (Member) o;
        return id == member.id &&
                admissionYear == member.admissionYear &&
                Objects.equals(name, member.name) &&
                Objects.equals(birthdate, member.birthdate) &&
                Objects.equals(email, member.email) &&
                Objects.equals(instrument, member.instrument);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, birthdate, email, admissionYear, instrument);
    }
}