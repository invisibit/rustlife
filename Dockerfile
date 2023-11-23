# Use the official Rust image.
# https://hub.docker.com/_/rust
FROM rust:latest

# Copy local code to the container image.
WORKDIR /home/jon/srcjpv/rustlife
COPY . .

# Install production dependencies and build a release artifact.
# RUN cargo install --path .

# Run the web service on container startup.
CMD ["wasm-pack build"]
CMD ["cd www"]
CMD ["npm run start"]