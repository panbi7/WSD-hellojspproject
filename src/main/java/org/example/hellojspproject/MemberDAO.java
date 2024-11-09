package org.example.hellojspproject;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class MemberDAO {
    // Mock 데이터 저장을 위한 리스트
    private List<Member> members;
    private int idCounter = 1;

    public MemberDAO() {
        members = new ArrayList<>();
        addSampleData(); // 샘플 데이터 추가
    }

    // 샘플 데이터 추가 메서드
    private void addSampleData() {
        addMember("김철수", "1990-01-01", "chulsoo@example.com", 2015, "피아노");
        addMember("이영희", "1992-02-02", "younghee@example.com", 2016, "기타");
    }

    // 모든 회원 조회
    public List<Member> getAllMembers() {
        return members;
    }

    // ID로 회원 조회
    public Member getMemberById(int id) {
        return members.stream()
                .filter(member -> member.getId() == id)
                .findFirst()
                .orElse(null);
    }

    // 회원 추가
    public void addMember(String name, String birthdate, String email, int admissionYear, String instrument) {
        Member member = new Member(idCounter++, name, birthdate, email, admissionYear, instrument);
        members.add(member);
    }

    // 회원 정보 수정
    public boolean updateMember(int id, String name, String birthdate, String email, int admissionYear, String instrument) {
        Member member = getMemberById(id);
        if (member != null) {
            updateMemberDetails(member, name, birthdate, email, admissionYear, instrument);
            return true;
        }
        return false;
    }

    // 회원 정보 설정 메서드
    private void updateMemberDetails(Member member, String name, String birthdate, String email, int admissionYear, String instrument) {
        member.setName(name);
        member.setBirthdate(birthdate);
        member.setEmail(email);
        member.setAdmissionYear(admissionYear);
        member.setInstrument(instrument);
    }

    // 회원 삭제
    public boolean deleteMember(int id) {
        return members.removeIf(member -> member.getId() == id);
    }
}