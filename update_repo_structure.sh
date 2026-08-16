#!/usr/bin/env bash
set -e

echo "Updating ITAI-2376 repository structure..."

# 1. Update Root README.md (clean overview without uncompleted lab filenames)
cat << 'ROOTREADME' > README.md
# ITAI 2376: Deep Learning for Artificial Intelligence Portfolio
**Houston Community College (HCC) | Artificial Intelligence & Robotics Program**

---

## Course Information
- **Course**: ITAI 2376 — Deep Learning for AI (Section 73)
- **Modality**: In-Person (West Loop Center, Rm C131 | Friday 2:00 PM – 4:50 PM)
- **Term**: Fall 2026 (08/17/2026 – 12/13/2026)
- **Instructor**: Professor Viswanatha Rao (viswanatha.rao@hccs.edu)

---

## Module Overview

| Module | Title | Status |
| :---: | :--- | :---: |
| **01** | Introduction to Deep Learning & Applications | In Progress |
| **02** | Neural Network Optimization & Training Deep Networks | Active (`ITAI2376_L02.ipynb`) |
| **03** | Convolutional Neural Networks (CNNs) for Computer Vision | Planned |
| **04** | Sequence Modeling and NLP with RNNs | Planned |
| **05** | Transformers and Attention Mechanisms | Planned |
| **06** | Variational Autoencoders (VAEs) | Planned |
| **07** | Generative Adversarial Networks (GANs) | Planned |
| **08** | Diffusion Models and Advanced Generative Techniques | Planned |
| **09** | Deep Reinforcement Learning and Applications | Planned |
| **10** | Reasoning Models and RAG | Planned |
| **11** | Agent Planning and Orchestration | Planned |
| **12** | LangChain and Agent Architectures | Planned |
| **13** | Advanced Agent Systems and Applications | Planned |
| **14** | Multimodal Deep Learning, Embodied AI & Future Trends | Planned |
| **15** | Course Review, Responsible AI & Ethics | Planned |
| **16** | Capstone Project & Portfolio Finalization | Planned |

---

## Academic Integrity & AI Policy
All work complies with the Houston Community College Academic Honesty Policy and Course AI Guidelines.
ROOTREADME

# 2. Update Module READMEs (Cleaned of uncompleted lab sections)
declare -A MODULES=(
  ["module-01-intro-deep-learning"]="Module 01: Introduction to Deep Learning & Applications
**SLOs Addressed:** 1, 2

---

## Overview & Objectives
- Define the scope of deep learning and differentiate from classical machine learning.
- Understand the end-to-end deep learning engineering workflow.
- Review neural network fundamentals, activation functions, and loss formulations.
- Configure local, cloud, and GPU-accelerated deep learning environments.

---

## Key Topics
- Perceptrons, Multi-Layer Perceptrons (MLPs), and forward/backward propagation.
- Activation functions: ReLU, Leaky ReLU, Sigmoid, Softmax.
- Loss functions: Binary Cross-Entropy, Categorical Cross-Entropy, Mean Squared Error.
- Framework initialization: TensorFlow/Keras and PyTorch runtime configurations."

  ["module-02-optimization-training"]="Module 02: Neural Network Optimization & Training Deep Networks
**SLOs Addressed:** 1, 3

---

## Overview & Objectives
- Analyze optimization mechanics and mitigate vanishing/exploding gradient problems.
- Implement data preprocessing, normalization, and data augmentation pipelines.
- Apply regularization techniques to combat model overfitting.
- Execute systematic hyperparameter tuning and learning rate scheduling.

---

## Key Topics
- First-order optimizers: SGD, SGD with Momentum, Nesterov, AdaGrad, RMSprop, Adam.
- Regularization: L1/L2 Weight Decay, Dropout, Spatial Dropout.
- Normalization: Batch Normalization, Layer Normalization.
- Training Callbacks: Early Stopping, Model Checkpointing, Learning Rate Reducers.
- Deep network inspection and parameter distribution profiling.

---

## Active Coursework
- Notebook: \`notebooks/ITAI2376_L02.ipynb\`"

  ["module-03-cnns-computer-vision"]="Module 03: Convolutional Neural Networks (CNNs) for Computer Vision
**SLOs Addressed:** 1, 2

---

## Overview & Objectives
- Master 2D convolution arithmetic, receptive fields, stride, padding, and dilation.
- Evaluate classic and modern CNN backbones: LeNet, AlexNet, VGG16, ResNet, DenseNet, EfficientNet.
- Implement transfer learning, feature extraction, and fine-tuning workflows.
- Interpret intermediate feature maps and convolutional filter activations.

---

## Key Topics
- Convolutions (3x3 stacking vs. large kernels), Max and Average Pooling.
- Parameter bottleneck in fully connected layers vs. Global Average Pooling (GAP).
- Residual skip connections and vanishing gradient alleviation.
- Pre-trained weights, zero-centering, and channel ordering."

  ["module-04-sequence-modeling-nlp"]="Module 04: Sequence Modeling and NLP with RNNs
**SLOs Addressed:** 1, 2

---

## Overview & Objectives
- Construct natural language preprocessing and tokenization pipelines.
- Implement distributed word representations (Word2Vec, GloVe, FastText).
- Understand recurrent hidden state transitions and Backpropagation Through Time (BPTT).
- Build gated recurrent architectures (LSTM, GRU) to model long-range temporal dependencies.

---

## Key Topics
- Tokenization, vocabulary generation, padding, and sequence masking.
- Vanilla RNNs and gradient decay over long sequences.
- LSTM components: Forget gate, Input gate, Cell candidate, Output gate.
- Gated Recurrent Units (GRU): Update gate and Reset gate."

  ["module-05-transformers-attention"]="Module 05: Transformers and Attention Mechanisms
**SLOs Addressed:** 1, 2, 4

---

## Overview & Objectives
- Formulate Scaled Dot-Product Attention and Multi-Head Attention mechanisms.
- Implement the complete Transformer encoder-decoder architecture.
- Explore modern transformer derivatives: BERT, GPT, Mamba (State Space Models), and Vision Transformers (ViTs).
- Fine-tune pre-trained Transformer models on downstream tasks.

---

## Key Topics
- Scaled Dot-Product Attention: Query, Key, Value mappings.
- Positional encodings: Sinusoidal and Rotary Positional Encodings (RoPE).
- Patch projection and classification tokens in Vision Transformers (ViTs).
- State Space Models (SSMs) and selective structured state space transitions."

  ["module-06-variational-autoencoders"]="Module 06: Variational Autoencoders (VAEs)
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
- Latent manifold vector arithmetic and conditional generation."

  ["module-07-generative-adversarial-networks"]="Module 07: Generative Adversarial Networks (GANs)
**SLOs Addressed:** 1, 2

---

## Overview & Objectives
- Analyze the minimax two-player game formulation between Generator (G) and Discriminator (D).
- Implement Deep Convolutional GANs (DCGANs) utilizing strided and transposed convolutions.
- Address adversarial training failure modes: Mode Collapse, vanishing gradients, non-convergence.
- Evaluate advanced GAN variants (Wasserstein GAN with Gradient Penalty - WGAN-GP).

---

## Key Topics
- Minimax objective function dynamics.
- Batch normalization and LeakyReLU architectural guidelines for stable DCGANs.
- Earth Mover's (Wasserstein-1) Distance and 1-Lipschitz continuity enforcement.
- Image-to-image translation concepts (Pix2Pix, CycleGAN)."

  ["module-08-diffusion-models"]="Module 08: Diffusion Models and Advanced Generative Techniques
**SLOs Addressed:** 1, 2, 4, 6

---

## Overview & Objectives
- Understand forward (diffusion) and reverse (denoising) Markovian state processes.
- Implement Denoising Diffusion Probabilistic Models (DDPM) and score-based generation.
- Formulate U-Net backbones with cross-attention and time-step embedding injection.
- Explore classifier-free guidance, latent diffusion models, and VQ-VAEs.

---

## Key Topics
- Forward Gaussian noise injection schedules.
- Direct marginal sampling and noise estimation loss formulation.
- U-Net architectures with residual blocks and self-attention.
- Conditional generation via text prompt embeddings."

  ["module-09-deep-reinforcement-learning"]="Module 09: Deep Reinforcement Learning and Applications
**SLOs Addressed:** 1, 2, 4

---

## Overview & Objectives
- Formulate decision-making as Markov Decision Processes (MDPs): (S, A, P, R, gamma).
- Implement value-based algorithms: Deep Q-Networks (DQN) with experience replay.
- Implement policy-based algorithms: Policy Gradients (REINFORCE) and Advantage Actor-Critic (A2C).
- Deploy continuous control algorithms: Proximal Policy Optimization (PPO).

---

## Key Topics
- Bellman Optimality Equation.
- Target network decoupling and Prioritized Experience Replay (PER).
- Generalized Advantage Estimation (GAE) and clipped surrogate objectives in PPO.
- Simulation environment interfacing via Gymnasium."

  ["module-10-reasoning-models-rag"]="Module 10: Reasoning Models and RAG
**SLOs Addressed:** 1, 4, 6

---

## Overview & Objectives
- Implement prompt-based reasoning patterns: Chain-of-Thought (CoT), Tree-of-Thoughts (ToT), ReAct.
- Construct production Retrieval-Augmented Generation (RAG) pipelines.
- Integrate vector databases, semantic indexing, chunking strategies, and dense retrieval.
- Evaluate RAG pipeline quality (faithfulness, answer relevance, context recall).

---

## Key Topics
- Reasoning loops: Thought -> Action -> Observation execution cycles.
- Embedding models: Dense semantic vector representations.
- Vector indices: Approximate Nearest Neighbor (ANN), HNSW, Cosine similarity.
- Vector databases: ChromaDB, FAISS."

  ["module-11-agent-planning-orchestration"]="Module 11: Agent Planning and Orchestration
**SLOs Addressed:** 1, 4

---

## Overview & Objectives
- Implement autonomous agent planning: Task decomposition, goal discovery, and replanning.
- Construct structured agent memory: Working memory, short-term buffer, long-term episodic retrieval.
- Build state machine and behavior tree controllers for deterministic agent execution.
- Implement error recovery, reflection mechanisms, and verification routines.

---

## Key Topics
- Plan-and-Solve strategies: Sub-goal generation and dependency resolution graphs.
- Reflexion: Self-evaluative verbal reinforcement learning and error memory accumulation.
- Hierarchical task planning and dynamic priority queue management.
- Guardrails, execution timeouts, and hallucination containment."

  ["module-12-langchain-architectures"]="Module 12: LangChain and Agent Architectures
**SLOs Addressed:** 1, 2, 4

---

## Overview & Objectives
- Master the LangChain framework ecosystem: Chains, Prompts, Models, Output Parsers.
- Develop custom tools, REST API connectors, and execution sandboxes.
- Build autonomous LangChain Agent Executors with memory management.
- Implement structured output validation (Pydantic / JSON schema enforcement).

---

## Key Topics
- LangChain Expression Language (LCEL) and pipeline composition.
- Tool integration: Python REPL tool, Search APIs, SQL query executors.
- Memory modules: Buffer, summary, and vector store memory.
- Agent runtimes: Function calling and structured chat agents."

  ["module-13-advanced-agent-systems"]="Module 13: Advanced Agent Systems and Applications
**SLOs Addressed:** 2, 4, 5, 6

---

## Overview & Objectives
- Architect multi-agent collaborative societies: Planner, Executor, Critic, Verifier.
- Implement agent-to-agent communication protocols and consensus algorithms.
- Deploy human-in-the-loop (HITL) authorization and review workflows.
- Benchmark and evaluate multi-agent performance, latency, and resource usage.

---

## Key Topics
- Role-playing agent frameworks (CrewAI, AutoGen, LangGraph).
- Hierarchical vs. decentralized agent communication topologies.
- Emergent behaviors, deadlock resolution, and infinite loop prevention.
- Production deployment: Containerization, telemetry, and cost tracking."

  ["module-14-multimodal-embodied-ai"]="Module 14: Multimodal Deep Learning, Embodied AI & Future Trends
**SLOs Addressed:** 2, 4, 6

---

## Overview & Objectives
- Formulate multimodal alignment, cross-attention fusion, and representation learning.
- Implement Vision-Language models: CLIP, BLIP, LLaVA.
- Build image captioning and Visual Question Answering (VQA) pipelines.
- Understand Embodied AI fundamentals: Sensorimotor control, navigation, spatial affordances.

---

## Key Topics
- Contrastive language-image pre-training (CLIP dual encoder loss).
- Multimodal projection layers (Linear Projection vs. Q-Former).
- Cross-attention fusion between image visual tokens and text query embeddings.
- Embodied agents: Sensor-actuator interaction and robotic manipulation policies."

  ["module-15-review-responsible-ai"]="Module 15: Course Review, Responsible AI & Ethics
**SLOs Addressed:** 3, 5, 6

---

## Overview & Objectives
- Analyze ethical implications, societal impacts, and risk mitigation in deep learning systems.
- Quantify and audit algorithmic bias, demographic parity, and disparate impact.
- Implement model explainability techniques: Grad-CAM, SHAP, Integrated Gradients.
- Review emerging frontiers: Self-supervised learning, Graph Neural Networks (GNNs), Large Reasoning Models.

---

## Key Topics
- Model interpretability: Saliency maps, Class Activation Maps (CAM), Grad-CAM on CNNs.
- Responsible AI frameworks: Data privacy, watermarking, differential privacy.
- Fairness metrics: Equal Opportunity, Disparate Impact Ratio, Calibration within groups.
- Synthesis of research trends across vision, speech, and agents."

  ["module-16-capstone-portfolio"]="Module 16: Capstone Project & Portfolio Finalization
**SLOs Addressed:** All (1-6)

---

## Overview & Objectives
- Consolidate all semester deliverables into a production-grade academic and technical portfolio.
- Deliver an end-to-end applied deep learning capstone project solving a real-world problem.
- Conduct technical presentation, defense, and application demonstration.
- Publish verified source code, architecture documentation, model weights, and technical reports.

---

## Project Structure
- Capstone Technical Report
- Presentation Slides
- Interactive Web Demo
- Deployment Manifest"
)

# 3. Write each clean module README
for mod in "${!MODULES[@]}"; do
  mod_path="modules/${mod}"
  mkdir -p "${mod_path}/notebooks" "${mod_path}/src"
  echo -e "# ${MODULES[$mod]}" > "${mod_path}/README.md"
done

echo "Updated all 16 module README files."
