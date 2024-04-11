package pe.edu.upeu.asistenciaupeujcr

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import pe.edu.upeu.asistenciaupeujcr.ui.theme.AsistenciaUPeUJCRTheme
import pe.edu.upeu.asistenciaupeujcr.ui.theme.DarkGreenColors
import pe.edu.upeu.asistenciaupeujcr.ui.theme.DarkPurpleColors
import pe.edu.upeu.asistenciaupeujcr.ui.theme.DarkRedColors
import pe.edu.upeu.asistenciaupeujcr.ui.theme.LightGreenColors
import pe.edu.upeu.asistenciaupeujcr.ui.theme.LightPurpleColors
import pe.edu.upeu.asistenciaupeujcr.ui.theme.LightRedColors
import pe.edu.upeu.asistenciaupeujcr.ui.theme.ThemeType
import pe.edu.upeu.asistenciaupeujcr.utils.isNight

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            val themeType= remember{ mutableStateOf(ThemeType.RED) }
            val darkThemex= isNight()
            val darkTheme = remember { mutableStateOf(darkThemex) }
            val colorScheme=when(themeType.value){
                ThemeType.PURPLE->{if (darkTheme.value) DarkPurpleColors else
                    LightPurpleColors}
                ThemeType.RED->{if (darkTheme.value) DarkRedColors else
                    LightRedColors}
                ThemeType.GREEN->{if (darkTheme.value) DarkGreenColors else
                    LightGreenColors}
                else->{LightRedColors}
            }

            AsistenciaUPeUJCRTheme(colorScheme=colorScheme) {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    Greeting("Android")
                }
            }
        }
    }
}

@Composable
fun Greeting(name: String, modifier: Modifier = Modifier) {
    Text(
        text = "Hello $name!",
        modifier = modifier
    )
}

@Preview(showBackground = true)
@Composable
fun GreetingPreview() {
    AsistenciaUPeUJCRTheme(colorScheme = LightRedColors) {
        Greeting("Android")
    }
}