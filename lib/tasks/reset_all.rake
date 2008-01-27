desc "Custom reset all. It will drop current database!!!"
task :reset => ['db:drop', 'db:create', 'db:migrate', 'annotate_models', 'spec:db:fixtures:load', 'db:test:clone_structure']
