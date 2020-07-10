package org.kh.camp.used.service;

import java.util.ArrayList;


import org.kh.camp.mycamp.domain.MyCampPageInfo;
import org.kh.camp.used.domain.UsedBoard;
import org.kh.camp.used.domain.UsedPageInfo;
import org.kh.camp.used.domain.UsedReply;
import org.kh.camp.used.store.UsedStoreLogic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("uService")
public class UsedBoardServiceImpl implements UsedBoardService{

	@Autowired
	private UsedStoreLogic uStore;
	
	@Override
	public int getUsedListCount() {
		
		return uStore.getUsedListCount();
	}

	@Override
	public ArrayList<UsedBoard> selectUsedList(MyCampPageInfo pi) {
		return uStore.selectUsedList(pi);
	}

	@Override
	public int insertUsedBoard(UsedBoard u) {
		
		return 0;
	}

	@Override
	public int addReadCount(int usedId) {
		return uStore.addReadCount(usedId);
	}

	@Override
	public UsedBoard selectUsedBoard(int usedId) {
		
		return uStore.selectUsedBoard(usedId);
	}

	@Override
	public int updateUsedBoard(UsedBoard u) {
		return 0;
	}

	@Override
	public int deleteUsedBoard(int usedId) {
		return 0;
	}

	
	/*댓글 부분*/
	@Override
	public ArrayList<UsedReply> selectUsedReplyList(int usedId) {
		return uStore.selectReplyList(usedId);
	}

	@Override
	public int insertUsedReply(UsedReply ur) {

		return uStore.insertReply(ur);
	}

}
