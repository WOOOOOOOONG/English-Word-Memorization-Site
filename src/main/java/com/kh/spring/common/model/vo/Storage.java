package com.kh.spring.common.model.vo;

public class Storage {
	private int fid;				// FID
	private String refId;			// REFER_ID
	private int category;			// CATEGORY
	private String path;			// PATH
	private String originName;		// ORIGINAL_NAME
	private String changeName;		// CHANGE_NAME
	private int fLevel;				// FLEVEL
	
	public Storage() {}

	public Storage(int fid, String refId, int category, String path, String originName, String changeName, int fLevel) {
		super();
		this.fid = fid;
		this.refId = refId;
		this.category = category;
		this.path = path;
		this.originName = originName;
		this.changeName = changeName;
		this.fLevel = fLevel;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getRefId() {
		return refId;
	}

	public void setRefId(String refId) {
		this.refId = refId;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public int getfLevel() {
		return fLevel;
	}

	public void setfLevel(int fLevel) {
		this.fLevel = fLevel;
	}

	@Override
	public String toString() {
		return "Storage [fid=" + fid + ", refId=" + refId + ", category=" + category + ", path=" + path
				+ ", originName=" + originName + ", changeName=" + changeName + ", fLevel=" + fLevel + "]";
	}
	
	
}
