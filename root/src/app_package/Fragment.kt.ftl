package ${packageName}

import android.os.Bundle
import ${packageName}.R;
import ${packageName}.databinding.Fragment${fragmentClass}Binding
import ${packageName}.ui.base.BaseFragment
import ${packageName}.ui.view.MainActivity
import javax.inject.Inject

class ${fragmentClass}Fragment :
    BaseFragment<Fragment${fragmentClass}Binding>({fragmentLayout}) {
    @Inject
    lateinit var viewModel: {fragmentClass}ViewModel

    override fun inject() = (requireActivity() as MainActivity).{daggerComponent}.inject(this)

    override fun setupDefinition(savedInstanceState: Bundle?) {
        //("Not yet implemented")
    }

    override fun setupData() {
        viewModel.text.observe(viewLifecycleOwner, {
            binding!!.textView.text = it
        })
    }

    override fun setupListener() {
        //("Not yet implemented")
    }
}