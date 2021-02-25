package ${packageName}

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import javax.inject.Inject

class ${fragmentClass}ViewModel @Inject contructor(

) : ViewModel() {
    private val _text = MutableLiveData<String>().apply {
        value = "This is {fragmentClass} Fragment"
    }
    val text: LiveData<String> = _text
}