import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.DataFormatException;
import java.util.NoSuchElementException;

//import sun.font.TrueTypeFont;

/**
 * Simulates python's range function
 */

public class Range implements Iterable<Integer> {
    // you probably need some variables here
    private int start;
    private int stop;
    private int diff;
    public Range(int start, int stop, int diff) throws DataFormatException {
        this.diff = diff;
        this.start = start;
        this.stop = stop;
        if (diff == 0)
        {
            throw new DataFormatException("range() arg 3 must not be zero");
        }
    }
    public Range(int start, int stop) throws DataFormatException
    {
        this(start, stop, 1);
    }
    public Range(int stop) throws DataFormatException
    {
        this(0, stop, 1);
    }

    private class RangeIterator implements Iterator<Integer>
    {
        private int start;
        private int stop;
        private int diff;

        public RangeIterator(int start, int stop, int diff) {
            this.diff = diff;
            this.start = start;
            this.stop = stop;
        }
        private int value = this.start;

        public boolean hasNext()
        {
            if(this.stop >= this.value)
            {
                if ((this.stop - this.value) >= this.diff) return true;
                else return false;
            }
            else
            {
                if((this.start - this.value) <= this.diff) return true;
                else return false;
            }
        }

        public Integer next()
        {
            if (hasNext())
            {
                try
                {
                    return this.value;
                }
                finally
                {
                    this.value += this.diff;
                }
            }
            else
            {
                throw new NoSuchElementException("Iteration exceeded.");
            }
        }
    }

    public java.util.Iterator<Integer> iterator()
    {
        return new RangeIterator(start, stop, diff);
    }

    /*
     * Test the Range class
     */
    public static void main(String[] args) throws DataFormatException {
        System.out.println("One:");
        for(Integer j : new Range(1,8,1))
        {
            System.out.print(j);
        }
        // 1234567

        
    }
}