package org.example.hellojspproject;

import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
    private List<Member> members;

    public MemberDAO() {
        // 정적 Mock 데이터 초기화
        members = new ArrayList<>();
        members.add(new Member(1, "Kim Chulsoo", "1990-01-01", "chulsoo@example.com", 2015, "Piano"));
        members.add(new Member(2, "Lee Younghee", "1992-02-02", "younghee@example.com", 2016, "Guitar"));
        members.add(new Member(3, "Park Sungho", "1993-03-03", "sungho@example.com", 2017, "Violin"));
        members.add(new Member(4, "Jang Minsuk", "1994-04-04", "minsuk@example.com", 2018, "Flute"));
        members.add(new Member(5, "Yoo Jiwon", "1995-05-05", "jiwon@example.com", 2019, "Drum"));
    }

    // 모든 회원 조회
    public List<Member> getAllMembers() {
        return members;
    }

    // ID로 회원 조회
    public Member getMemberById(int id) {
        for (Member member : members) {
            if (member.getId() == id) {
                return member;
            }
        }
        return null;
    }

    // 회원 추가
    public void addMember(String name, String birthdate, String email, int admissionYear, String instrument) {
        int newId = members.size() + 1;
        Member member = new Member(newId, name, birthdate, email, admissionYear, instrument);
        members.add(member);
    }

    // 회원 정보 수정
    public boolean updateMember(int id, String name, String birthdate, String email, int admissionYear, String instrument) {
        Member member = getMemberById(id);
        if (member != null) {
            member.setName(name);
            member.setBirthdate(birthdate);
            member.setEmail(email);
            member.setAdmissionYear(admissionYear);
            member.setInstrument(instrument);
            return true;
        }
        return false;
    }

    // 회원 삭제
    public boolean deleteMember(int id) {
        Member member = getMemberById(id);
        if (member != null) {
            members.remove(member);
            return true;
        }
        return false;
    }
}