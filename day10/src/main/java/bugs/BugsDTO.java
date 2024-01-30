package bugs;

//	ID          NOT NULL NUMBER         
//	ARTIST_NAME NOT NULL VARCHAR2(500)  
//	ARTIST_IMG  NOT NULL VARCHAR2(500)  
//	ALBUM_NAME  NOT NULL VARCHAR2(500)  
//	ALBUM_IMG   NOT NULL VARCHAR2(500)  
//	NAME        NOT NULL VARCHAR2(500)  
//	GENRE       NOT NULL VARCHAR2(500)  
//	PLAYTIME             NUMBER         
//	LYRICS      NOT NULL VARCHAR2(4000) 
//	ISTITLE              NUMBER         

public class BugsDTO {
	private int id;
	private String artist_name;
	private String artist_img;
	private String album_name;
	private String album_img;
	private String name;
	private String genre;
	private int playTime;
	private String lyrics;
	private int isTitle;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getArtist_name() {
		return artist_name;
	}
	public void setArtist_name(String artist_name) {
		this.artist_name = artist_name;
	}
	public String getArtist_img() {
		return artist_img;
	}
	public void setArtist_img(String artist_img) {
		this.artist_img = artist_img;
	}
	public String getAlbum_name() {
		return album_name;
	}
	public void setAlbum_name(String album_name) {
		this.album_name = album_name;
	}
	public String getAlbum_img() {
		return album_img;
	}
	public void setAlbum_img(String album_img) {
		this.album_img = album_img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getPlayTime() {
		return playTime;
	}
	public void setPlayTime(int playTime) {
		this.playTime = playTime;
	}
	public String getLyrics() {
		return lyrics;
	}
	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}
	public int getIsTitle() {
		return isTitle;
	}
	public void setIsTitle(int isTitle) {
		this.isTitle = isTitle;
	}
	
	
}
