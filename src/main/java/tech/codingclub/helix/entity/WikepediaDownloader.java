package tech.codingclub.helix.entity;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import tech.codingclub.helix.global.HttpURLConnectionExample;

public class WikepediaDownloader {

    private String keyword;
    public WikepediaDownloader(String keyword){
        this.keyword=keyword;
    }
    public WikiResult getResponse() {
        if(this.keyword==null || this.keyword.length()==0){
           return null;
        }
        else{
            this.keyword=keyword.trim().replaceAll("[ ]","_");
            String url=getUrlQuery(this.keyword);
            String response="";
            String imgUrl="";
            try {
              String wekipediaResponse=  HttpURLConnectionExample.sendGet(url);
              Document document= Jsoup.parse(wekipediaResponse,"https://en.wikipedia.org");
              Elements childElements=document.body().select(".mw-parser-output >*");
              int state=0;
              for(Element childElement:childElements){
                  //System.out.println(childElement.tagName());
                  if(childElement.tagName().equals("table"))
                      state=1;
                  else if(state==1){
                      if(childElement.tagName().equals("p"))
                          state=2;
                          response=childElement.text();
                          break;
                  }
                }
              try {
                  imgUrl=document.body().select(".infobox img").get(0).attr("src");

              }catch (Exception e){
                  e.printStackTrace();
              }

            } catch (Exception e) {
                e.printStackTrace();
            }
            WikiResult wikiResult=new WikiResult(this.keyword,response,imgUrl);
            return wikiResult;
        }
    }

    private String getUrlQuery(String keyword) {
        return "https://en.wikipedia.org/wiki/"+keyword;
    }



}
