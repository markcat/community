package com.tiandijiao.model.bean;
public class SuccessMsg {
	
	public static SuccessMsg msg( String msg){
		return new SuccessMsg(msg);
	}
	
	
	public static SuccessMsg msg (String msg, Object data){
		SuccessMsg msgObject = new SuccessMsg(msg);
		msgObject.setData(data);
		return msgObject;
	}
	
	public static SuccessMsg msg(boolean success, String msg){
		return new SuccessMsg(success, msg);
	}
	
	public static SuccessMsg err(boolean success, String msg, String errCode){
		return new SuccessMsg(success, msg, errCode);
	}
	
	public SuccessMsg(){
	}
	
	public SuccessMsg(String msg){
		this.message = msg;
	}
	
	public SuccessMsg(boolean success, String msg) {
		this.success = success;
		this.message = msg;
	}
	
	public SuccessMsg(boolean success, String msg, String errCode){
		this.success = success;
		this.message = msg;
		this.errCode = errCode;
	}
	
	/**
	 * success
	 */
	private boolean success = true;
	
	/**
	 * message
	 */
	private String message = "";
	
	/**
	 * errCode
	 */
	private String errCode = "";
	
	/**
	 * data
	 */
	private Object data;
	
	public boolean isSuccess() {
		return success;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public String getErrCode() {
		return errCode;
	}


	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}


	public Object getData() {
		return data;
	}


	public void setData(Object data) {
		this.data = data;
	}


	public void setSuccess(boolean success) {
		this.success = success;
	}
	
	
}
