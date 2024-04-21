struct _GskBlendNode {};
struct _GskBlurNode {};
struct _GskBorderNode {};
struct _GskBroadwayRenderer {};
struct _GskBroadwayRendererClass {};
struct _GskCairoNode {};
struct _GskCairoRenderer {};
struct _GskCairoRendererClass {};
struct _GskClipNode {};
struct _GskColorMatrixNode {};
struct _GskColorNode {};
struct _GskConicGradientNode {};
struct _GskContainerNode {};
struct _GskCrossFadeNode {};
struct _GskDebugNode {};
struct _GskFillNode {};
struct _GskGLShaderNode {};
struct _GskInsetShadowNode {};
struct _GskLinearGradientNode {};
struct _GskMaskNode {};
struct _GskOpacityNode {};
struct _GskOutsetShadowNode {};
struct _GskPath {};
struct _GskPathBuilder {};
struct _GskPathMeasure {};
struct _GskRadialGradientNode {};
struct _GskRenderNode {};
struct _GskRenderer {};
struct _GskRendererClass {};
struct _GskRepeatNode {};
struct _GskRepeatingLinearGradientNode {};
struct _GskRepeatingRadialGradientNode {};
struct _GskRoundedClipNode {};
struct _GskShaderArgsBuilder {};
struct _GskShadowNode {};
struct _GskStroke {};
struct _GskStrokeNode {};
struct _GskSubsurfaceNode {};
struct _GskTextNode {};
struct _GskTextureNode {};
struct _GskTextureScaleNode {};
struct _GskTransform {};
struct _GskTransformNode {};
struct _GskGLRenderer {};
struct _GskGLRendererClass {};
struct _GskGLShader {};
struct _GskNglRenderer {};
struct _GskNglRendererClass {};
struct _GskVulkanRenderer {};
struct _GskVulkanRendererClass {};
typedef struct _GskGLRenderer GskGLRenderer;
typedef struct _GskGLRendererClass GskGLRendererClass;
typedef struct _GskGLShader GskGLShader;
typedef struct _GskNglRenderer GskNglRenderer;
typedef struct _GskVulkanRenderer GskVulkanRenderer;
typedef struct _GskVulkanRendererClass GskVulkanRendererClass;

#include <sys/types.h>
#include <stdint.h>
#include <gsk/gsk.h>
#if __has_include(<gsk/gl/gsknglrenderer.h>)
#include <gsk/gl/gsknglrenderer.h>
#endif
#if __has_include(<gsk/broadway/gskbroadwayrenderer.h>)
#include <gsk/broadway/gskbroadwayrenderer.h>
#endif

extern GskRenderer *gsk_gl_renderer_new(void);
extern GType gsk_gl_renderer_get_type(void);
