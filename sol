- name: Get Authors of Failed Files
  run: |
    # Check if repo is shallow
    if git rev-parse --is-shallow-repository | grep -q "true"; then
      git fetch --unshallow
    fi

    # Continue with your logic to get authors
    # Example: Get authors of changed files
    git diff --name-only HEAD~1 HEAD > changed_files.txt
    echo "Changed files:"
    cat changed_files.txt

    echo "Authors:"
    git log --pretty=format:'%an <%ae>' --no-merges -- $(cat changed_files.txt) | sort | uniq
