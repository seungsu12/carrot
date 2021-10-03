package com.carrot.beans;

public class orderVO {

		private int member_id;
		private int shoes_id;
		private String size;
		private int count; 
		
		public int getCount() {
			return count;
		}
		public void setCount(int count) {
			this.count = count;
		}
		public int getMember_id() {
			return member_id;
		}
		public void setMember_id(int member_id) {
			this.member_id = member_id;
		}
		public int getShoes_id() {
			return shoes_id;
		}
		public void setShoes_id(int shoes_id) {
			this.shoes_id = shoes_id;
		}
		public String getSize() {
			return size;
		}
		public void setSize(String size) {
			this.size = size;
		}
		
		
}
