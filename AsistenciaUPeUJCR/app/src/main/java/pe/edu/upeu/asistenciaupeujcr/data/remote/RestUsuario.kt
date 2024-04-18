package pe.edu.upeu.asistenciaupeujcr.data.remote

import pe.edu.upeu.asistenciaupeujcr.modelo.UsuarioDto
import pe.edu.upeu.asistenciaupeujcr.modelo.UsuarioResp
import retrofit2.Response
import retrofit2.http.Body
import retrofit2.http.POST

interface RestUsuario {
    @POST("/asis/login")
    suspend fun login(@Body user:UsuarioDto):Response<UsuarioResp>
}