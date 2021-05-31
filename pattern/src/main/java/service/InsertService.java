package service;

import persistance.PatternDAO;

public class InsertService {
	public boolean insertService(String num1) {
		
		//DAO 호출
		PatternDAO dao=new PatternDAO();
		boolean result=dao.insert(num1);
		
		
		return result;
	}
}
