package servlet;

import java.util.HashMap;
import java.util.Map;
import mol.Steam;

public class SteamData {

    final private Map<String, Steam> steam = new HashMap<>();
    final private static SteamData instance = new SteamData();

    SteamData() {
        steam.put("RB6", new Steam("RB6", "Online", "FPS", "หาเพื่อนเล่นด้วย","4"));
        steam.put("GTA V", new Steam("GTA V", "Online", "open world", "หาเพื่อนเล่นด้วย", "10"));
        steam.put("StarCraft II", new Steam("StarCraft II", "Online", "RPG", "หาเพื่อนเล่นด้วย","2"));

    }

    public static SteamData getInstance() {
        return instance;
    }

    public Steam getSteam(String name) {
        return steam.get(name);
    }

}
