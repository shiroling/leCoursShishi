package system;

public class Score implements Scorable{
    private int score;


    public Score(int sc) {
        score = sc;
    }

    @Override
    public void one() {
        score += 1;
    }

    @Override
    public void two() {
        score += 2;
    }

    @Override
    public void three() {
        score += 3;
    }

    @Override
    public int getScore() {
        return score;
    }
}
