package ${packageName}.base_arch.presentation.presenter;

import ${packageName}.base_arch.presentation.view.${viewName};

public abstract class ${presenterName}<T extends ${viewName}> {

    protected T view;

    public ${presenterName}(T view) {
		this.view = view;
    }

    public abstract void init();

}
