
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.MainScope

class Greeting: CoroutineScope by MainScope() {
    private val platform = getPlatform()

    fun greet(): String {
        return "Hello, ${platform.name}!"
    }

    suspend fun isOnMainThread(): Boolean {
        return isMainThread()
    }
}