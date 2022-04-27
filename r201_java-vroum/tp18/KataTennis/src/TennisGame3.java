public class TennisGame3 implements TennisGame {

    private int p2;
    private int p1;
    private String p1N;
    private String p2N;

    public TennisGame3(String p1N, String p2N) {
        this.p1N = p1N;
        this.p2N = p2N;
    }

    private String getWinningPlayer() {
        if(p1 >p2)
            return p1N;
        return p2N;
    }

    public boolean isDeuce() {
        return p1 == p2;
    }

    public boolean isSetWin() {
        return p1 == 4 || p2 == 4;
    }

    public boolean isFinalSet() {
        return p1 + p2 == 6;
    }

    public String getScore() {
        String s;
        final int PTS_ECARTS = 1;

        if ( !isSetWin() && !isFinalSet()) {
            String[] p = new String[]{"Love", "Fifteen", "Thirty", "Forty"};
            s = p[p1];
            return (p1 == p2) ? s + "-All" : s + "-" + p[p2];



        } else {
            if (isDeuce())
                return "Deuce";

            if (Math.abs(p1-p2) == PTS_ECARTS)
                return "Advantage " + getWinningPlayer();
            return "Win for " + getWinningPlayer();
        }
    }

    public void wonPoint(String playerName) {
        if (playerName.equals("player1"))
            this.p1 += 1;
        else
            this.p2 += 1;

    }

}