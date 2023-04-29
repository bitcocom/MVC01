package kr.smart.mapper;

import kr.smart.entity.Member;
public interface MemberMapper {
    public Member findByUsername(String username);
}
