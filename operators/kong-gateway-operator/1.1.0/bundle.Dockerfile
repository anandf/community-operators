FROM scratch

# Core bundle labels.
LABEL operators.operatorframework.io.bundle.mediatype.v1=registry+v1
LABEL operators.operatorframework.io.bundle.manifests.v1=manifests/
LABEL operators.operatorframework.io.bundle.metadata.v1=metadata/
LABEL operators.operatorframework.io.bundle.package.v1=kong-gateway-operator
LABEL operators.operatorframework.io.bundle.channels.v1=alpha,beta
LABEL operators.operatorframework.io.bundle.channel.default.v1=beta
LABEL operators.operatorframework.io.metrics.builder=operator-sdk-v1.23.0
LABEL operators.operatorframework.io.metrics.mediatype.v1=metrics+v1
LABEL operators.operatorframework.io.metrics.project_layout=go.kubebuilder.io/v3

# Labels for testing.
LABEL operators.operatorframework.io.test.mediatype.v1=scorecard+v1
LABEL operators.operatorframework.io.test.config.v1=tests/scorecard/

# Copy files to locations specified by labels.
COPY bundle/regular/manifests /manifests/
COPY bundle/regular/metadata /metadata/
COPY bundle/regular/tests/scorecard /tests/scorecard/