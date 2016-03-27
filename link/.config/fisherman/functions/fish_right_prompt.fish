function git_is_repo -d "Check if directory is a repository"
  test -d .git; or command git rev-parse --git-dir >/dev/null ^/dev/null
end

function git_branch_name -d "Get current branch name"
  git_is_repo; and begin
    command git symbolic-ref --short HEAD
  end
end

function git_is_touched -d "Check if repo has any changes"
  git_is_repo; and begin
    test -n (echo (command git status --porcelain))
  end
end

function fish_right_prompt
  set -l code $status

  function hulk::status::color -S
    test $code -ne 0; and echo (hulk::err); or echo (hulk::fst)
  end

  function hulk::branch_name
    git_branch_name | tr '[:lower:]' '[:upper:]'
  end

  set -l base (basename "$PWD")

  if test "$PWD" != "/"
    prompt_pwd | sed "s|~|"(hulk::status::color)"ᴦ"(off)"|g" \
    | sed "s|/|"(hulk::status::color)"/"(off)(hulk::dim)"|g" \
    | sed "s|$base|"(hulk::trd)" $base"(off)"|g"
  end

  if test -d .git
    echo (hulk::status::color)" ≡ "(hulk::snd)(begin
      git_is_touched; and hulk::branch_name; or echo (hulk::dim)(hulk::branch_name)
    end)(off)
  else
    echo (hulk::status::color)" ≡"(off)
  end
end
