package com.entity;
/**
 * 上传文件
 * @author HYZ
 *
 */
public class Files {
	private long file_id;
	private String file_title;
	private String file_src;
	private long file_coin;
	public Files() {}
	public long getFile_id() {
		return file_id;
	}
	public void setFile_id(long file_id) {
		this.file_id = file_id;
	}
	public String getFile_title() {
		return file_title;
	}
	public void setFile_title(String file_title) {
		this.file_title = file_title;
	}
	public String getFile_src() {
		return file_src;
	}
	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}
	public long getFile_coin() {
		return file_coin;
	}
	public void setFile_coin(long file_coin) {
		this.file_coin = file_coin;
	}
	@Override
	public String toString() {
		return "UpFile [file_id=" + file_id + ", file_title=" + file_title + ", file_src=" + file_src + ", file_coin="
				+ file_coin + "]";
	}
	
}
