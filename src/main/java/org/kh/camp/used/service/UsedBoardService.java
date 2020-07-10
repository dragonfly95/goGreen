package org.kh.camp.used.service;

import java.util.ArrayList;

import org.kh.camp.mycamp.domain.MyCampPageInfo;
import org.kh.camp.used.domain.UsedBoard;
import org.kh.camp.used.domain.UsedPageInfo;
import org.kh.camp.used.domain.UsedReply;

public interface UsedBoardService {

	public int getUsedListCount();
	public ArrayList<UsedBoard> selectUsedList(MyCampPageInfo pi);
	public int insertUsedBoard(UsedBoard u);
	public int addReadCount(int usedId);
	public UsedBoard selectUsedBoard(int usedId);
	public int updateUsedBoard(UsedBoard u);
	public int deleteUsedBoard(int usedId);
	
	/*댓글 부분*/
	public ArrayList<UsedReply> selectUsedReplyList(int usedId);
	public int insertUsedReply(UsedReply ur);
}










