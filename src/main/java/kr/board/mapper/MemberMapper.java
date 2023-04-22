package kr.board.mapper;

import kr.board.entity.Member;
public interface MemberMapper {
    Member findByUsername(String username);
}
