# --- Custom functions ---

# Jump to Docker workspace
dkhome() {
  cd /volume3/docker || echo "No /volume3/docker directory found"
}

# Stop all containers
dkstop() {
  docker ps -q | xargs -r docker stop
}

# Start all containers
dkstart() {
  docker start $(docker ps -aq --filter status=exited)
}
