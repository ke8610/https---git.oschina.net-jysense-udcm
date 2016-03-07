package org.ericsson.udcm.utils.model;

public class RidMap {
	public static final String SESSION_USERNAME = "RIDMAP";
	private long rid;
	private String locate;
	public long getRid() {
		return rid;
	}
	public void setRid(long rid) {
		this.rid = rid;
	}
	public String getLocate() {
		return locate;
	}
	public void setLocate(String locate) {
		this.locate = locate;
	}
}
