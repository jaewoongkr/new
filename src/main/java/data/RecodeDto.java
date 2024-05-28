package data;

public class RecodeDto {
    private int num;
    private String name;
    private String review;
    private String score;

    public RecodeDto() {
        super();
    }

    public RecodeDto(String name, String review, String score) {
        super();
        this.name = name;
        this.review = review;
        this.score = score;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }
}
