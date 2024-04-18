package pe.edu.upeu.asistenciaupeujcr.di

import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import pe.edu.upeu.asistenciaupeujcr.repository.UsuarioRepository
import pe.edu.upeu.asistenciaupeujcr.repository.UsuarioRepositoryImp
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class RepositoryModule {
    @Binds
    @Singleton
    abstract fun
            userRepository(userRepos:UsuarioRepositoryImp):UsuarioRepository
}