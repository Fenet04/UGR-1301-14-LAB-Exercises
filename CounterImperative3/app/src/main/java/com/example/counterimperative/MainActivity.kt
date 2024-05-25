import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.Button
import android.widget.ImageButton
import android.widget.TextView
import com.example.counterimperative.R

class MainActivity : AppCompatActivity() {
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(com.example.counterimperative.R.layout.activity_main)

        val countTextView: TextView = findViewById(R.id.count_text_view)
        val messageTextView: TextView = findViewById(R.id.message_text_view)
        val incrementButton: ImageButton = findViewById(R.id.increment_button)
        val decrementButton: ImageButton = findViewById(R.id.decrement_button)
        val resetButton: Button = findViewById(R.id.reset_button)

        fun updateCount() {
            messageTextView.text = "You have clicked the button this many times:"
            countTextView.text = count.toString()
        }

        incrementButton.setOnClickListener {
            count++
            updateCount()
        }

        decrementButton.setOnClickListener {
            count--
            updateCount()
        }

        resetButton.setOnClickListener {
            count = 0
            updateCount()
        }

        updateCount()
    }
}
