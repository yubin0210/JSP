package youtube;

//	IDX         NOT NULL NUMBER         
//	TITLE       NOT NULL VARCHAR2(1000) 
//	CHANNELNAME NOT NULL VARCHAR2(500)  
//	THUMBNAIL   NOT NULL VARCHAR2(1000) 
//	VIDEOTAG    NOT NULL VARCHAR2(2000) 

public class YoutubeDTO {

	private int idx;
	private String title;
	private String channelName;
	private String thumbnail;
	private String videoTag;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getChannelName() {
		return channelName;
	}
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getVideoTag() {
		return videoTag;
	}
	public void setVideoTag(String videoTag) {
		this.videoTag = videoTag;
	}
}
