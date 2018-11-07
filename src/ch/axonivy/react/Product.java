package ch.axonivy.react;

public class Product {
	private Integer id;
	private String title;
	private String description;
	private String url;
	private Integer votes;
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getUrl() {
		return url;
	}
	
	public void setUrl(String url) {
		this.url = url;
	}
	
	public Integer getVotes() {
		return votes;
	}
	
	public void setVotes(Integer votes) {
		this.votes = votes;
	}
}
