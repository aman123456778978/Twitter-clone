package tech.codingclub.helix.entity;

public class WikiResult {
    private String keyword;
    private String response;
    private String imageUrl;

    public String getKeyword() {
        return keyword;
    }

    public String getResponse() {
        return response;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public WikiResult(String keyword, String response, String imageUrl) {
        this.keyword=keyword;
        this.response=response;
        this.imageUrl=imageUrl;
    }
}
