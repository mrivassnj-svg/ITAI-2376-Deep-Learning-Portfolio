# Module 06: Variational Autoencoders (VAEs)
**SLOs Addressed:** 1, 2

---

## Overview & Objectives
- Understand probabilistic latent variable modeling and approximate inference.
- Derive the Evidence Lower Bound (ELBO) objective function.
- Implement the Reparameterization Trick to permit backpropagation through stochastic nodes.
- Perform latent space traversal, interpolation, and synthetic image reconstruction.

---

## Key Topics
- Encoder parameterization: Mean vector and log-variance vector.
- Reparameterization: z = mu + sigma * epsilon.
- Loss components: Reconstruction Loss (BCE/MSE) + Kullback-Leibler (KL) Divergence regularization.
- Latent manifold vector arithmetic and conditional generation.
