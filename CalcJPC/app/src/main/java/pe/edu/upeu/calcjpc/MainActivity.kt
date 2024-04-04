package pe.edu.upeu.calcjpc

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import pe.edu.upeu.calcjpc.ui.theme.CalcJPCTheme


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            CalcJPCTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    //Greeting()
                    Calculadora()
                }
            }
        }
    }
}


@Composable
fun Greeting(name: String="Android", modifier: Modifier = Modifier) {
    Text(
        text = "Hello $name!",
        modifier = modifier
    )
}

@Preview(showBackground = true)
@Composable
fun GreetingPreview() {
    CalcJPCTheme {
        Greeting("Android")

    }
}

fun isNumeric(toCheck: String): Boolean {
    val regex = "-?[0-9]+(\\.[0-9]+)?".toRegex()
    return toCheck.matches(regex)
}


@Preview()
@Composable
fun Calculadora(){
    val(oldVal, setOldVal )= remember { mutableStateOf("") }
    val(operador, setOperador )= remember { mutableStateOf("") }
    val(result, setResult )= remember { mutableStateOf("") }

    Column(modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
        ) {
            OutlinedTextField(value = result, onValueChange ={} )

            var listaA= listOf<String>("AC", ".", "%", "/")
            var listaB= listOf<String>("7", "8", "9", "*")
            var listaC= listOf<String>("6", "5", "=", "+")
            var lista= listOf<List<String>>(listaA, listaB, listaC)
            lista.forEach {
                var lisX=it
                Row {
                    lisX.forEach{
                        Button(onClick = {
                            if (isNumeric(it)){
                               setResult(result+it.toString())
                            }
                            if (it.equals("/") || it.equals("*") || it.equals("+")){
                                setOldVal(result)
                                setOperador(it.toString())
                                setResult("")
                            }
                            if (it.equals("AC")){
                                setResult("")
                            }
                            if(it.equals("=")){
                                val num1=oldVal.toInt()
                                val num2=result.toInt()
                                when(operador){
                                    "/"->{setResult((num1/num2).toString())}
                                    "*"->{setResult((num1*num2).toString())}
                                    "+"->{setResult((num1+num2).toString())}
                                }
                            }

                        }) {

                            Text(text = it)
                        }
                    }
                }
            }
    }

}