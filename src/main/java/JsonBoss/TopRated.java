package JsonBoss;

import java.util.ArrayList;

public class TopRated {

    private int page;
    private int total_results;
    private int total_pages;
    ArrayList< TopRatedMovie> results = new ArrayList<>();

 // Getter Methods 
    public int getPage() {
        return page;
    }

    public int getTotal_results() {
        return total_results;
    }

    public int getTotal_pages() {
        return total_pages;
    }

    public ArrayList<TopRatedMovie> getResults() {
        return results;
    }

 // Setter Methods 
    public void setPage(int page) {
        this.page = page;
    }

    public void setTotal_results(int total_results) {
        this.total_results = total_results;
    }

    public void setTotal_pages(int total_pages) {
        this.total_pages = total_pages;
    }
}
