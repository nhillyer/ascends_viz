desc "Write a task description and write it good!"
task :run_hysplit do
  get_db_conn(GTRON_ENV)
end
