/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mol;

/**
 *
 * @author ASUS ROG GAMING
 */
public class Steam {

    String Gamename;
    String social1;
    String social2;
    String GameType;
    String Synopsis;
    String cc;

    public Steam() {
    }

    public Steam(String Gamename, String social1,String GameType, String Synopsis, String cc) {
        this.Gamename = Gamename;
        this.social1 = social1;
        this.GameType = GameType;
        this.Synopsis = Synopsis;
        this.cc = cc;
    }

    public String getGamename() {
        return Gamename;
    }

    public void setGamename(String Gamename) {
        this.Gamename = Gamename;
    }

    public String getSocial1() {
        return social1;
    }

    public void setSocial1(String social1) {
        this.social1 = social1;
    }

    public String getSocial2() {
        return social2;
    }

    public void setSocial2(String social2) {
        this.social2 = social2;
    }

    public String getGameType() {
        return GameType;
    }

    public void setGameType(String GameType) {
        this.GameType = GameType;
    }

    public String getSynopsis() {
        return Synopsis;
    }

    public void setSynopsis(String Synopsis) {
        this.Synopsis = Synopsis;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

}
