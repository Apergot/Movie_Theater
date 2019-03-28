/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JsonBoss;

import com.google.gson.Gson;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

/**
 *
 * @author Apergot
 */
public class UseTopRated {
    
    private List<TopRatedMovie> movies;
    
    /**
     * Lo suyo sería que esto devolviese una lista después de iterar por todas
     * las páginas de la API, pero en principio vamos a probar cómo funciona bien.
     * @return 
     * @throws java.net.MalformedURLException
     */
    public List<TopRatedMovie> getTopRatedMovies() throws MalformedURLException, IOException{
        JsonReader topRatedJson = new JsonReader();
        URL url = new URL("https://api.themoviedb.org/3/movie/top_rated?api_key=5c77838171bff895bbe25dbe9b674221&language=en-US&page=1");
        String jsonTR = topRatedJson.getJson(url);
        Gson gson = new Gson();
        TopRated toprated = (TopRated) gson.fromJson(jsonTR, TopRated.class);
        movies = toprated.getResults();
        String page = "https://api.themoviedb.org/3/movie/top_rated?api_key=5c77838171bff895bbe25dbe9b674221&language=en-US&page=1";
        int pages = 10;//toprated.getTotal_pages()
        for (int i = 2; i <= pages; i++) {
            String newPage = page.substring(0,page.length()-1);
            URL newUrl = new URL(newPage+ i);
            String jsonTR2 = topRatedJson.getJson(newUrl);
            Gson gson2 = new Gson();
            TopRated toprated2 = (TopRated) gson2.fromJson(jsonTR2, TopRated.class);
            for (TopRatedMovie e : toprated2.getResults()) {
                movies.add(e);
            }
        }
        
        return movies;
    }
    
    public String getPosterFromTRM(TopRatedMovie trm){
        String poster = "https://image.tmdb.org/t/p/w500/"+trm.getPoster_path();
        return poster;
    }
    
    public TopRatedMovie searchMovie(int id){
        for(TopRatedMovie e:movies){
            if(e.getId() == id){
                return e;
            }
        }
        return null;
    }
}
